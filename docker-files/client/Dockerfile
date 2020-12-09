FROM opensuse/tumbleweed

RUN zypper --gpg-auto-import-keys refresh
RUN zypper install -y openssh vim iputils gcc make ruby-devel libxml2-devel libxslt-devel

RUN mkdir -p /root/.bundle
COPY bundler-config /root/.bundle/config
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
