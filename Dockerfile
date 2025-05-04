FROM blackarchlinux/blackarch

# Base Image
RUN pacman -Syu --noconfirm && \
    pacman -S base-devel git openvpn python3 python-pip uv vim --noconfirm --disable-sandbox && \
    pacman -Scc --noconfirm


# 자주 사용하는 도구
RUN pacman -S --noconfirm  \
      metasploit hydra nmap gnu-netcat burpsuite sslyze \
      john evil-winrm certipy responder netexec blackarch-wordlist && \
    pacman -Scc --noconfirm


# 자주 사용하지만 대체할 변경될 가능성이 있는 도구
RUN pacman -S --noconfirm \
      enum4linux-ng nuclei cent naabu gobuster && \
    pacman -Scc --noconfirm

# 변경될 가능성이 높은 도구
RUN pacman -S --noconfirm \
      ldapenum revsh vpnpivot && \
    pacman -Scc --noconfirm

ENTRYPOINT ["/usr/bin/bash", "-c", "pacman -Syu --noconfirm --disable-sandbox && /usr/bin/bash"]

# reference: https://blackarch.org/tools.html