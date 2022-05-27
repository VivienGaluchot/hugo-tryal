FROM klakegg/hugo:0.93.2-debian

# add dev tools
RUN apt-get update && \
    apt-get install git vim sudo bash-completion -y

# add dev user
RUN useradd -m dev && echo "dev:dev" | chpasswd && adduser dev sudo
USER dev
WORKDIR /home/dev

# prepare .ssh directory for github access
RUN mkdir -p /home/dev/.ssh
RUN chown -R dev:dev /home/dev/.ssh

ENTRYPOINT ["bash"]