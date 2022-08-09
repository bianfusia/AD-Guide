# Microsoft Deployment Toolkit

- Microsoft Deployment Toolkit (MDT) is a Microsoft service that assists with automating the deployment of Microsoft Operating Systems (OS)
- Usually, MDT is integrated with Microsoft's System Center Configuration Manager (SCCM), which manages all updates for all Microsoft applications, services, and operating systems.

## PXE Boot
- MDT can be configured in various ways, we will focus exclusively on a configuration called Preboot Execution Environment (PXE) boot.
- Large organisations use PXE boot to allow new devices that are connected to the network to load and install the OS directly over a network connection
- PXE boot is usually integrated with DHCP, which means that if DHCP assigns an IP lease, the host is allowed to request the PXE boot image and start the network OS installation process.
- Once the process is performed, the client will use a TFTP connection to download the PXE boot image. We can exploit the PXE boot image for two different purposes:
  - Inject a privilege escalation vector, such as a Local Administrator account, to gain Administrative access to the OS once the PXE boot has been completed.
  - Perform password scraping attacks to recover AD credentials used during the install.
  
### Password Scraping

- Initial step of attack is not provided. We will skip the part where we attempt to request an IP and the PXE boot preconfigure details from DHCP.
- The first piece of information regarding the PXE Boot preconfigure you would have received via DHCP is the IP of the MDT server.
- The second piece of information you would have received was the names of the BCD files. These files store the information relevant to PXE Boots for the different types of architecture. Might be on a website
- 
