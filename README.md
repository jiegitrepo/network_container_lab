# Network Container Lab

A collection of container-based networking labs designed to explore, simulate, automate, and troubleshoot enterprise and service provider network architectures.

This repository focuses on practical networking concepts using **Containerlab, FRRouting (FRR), Linux networking, and Ansible**. It provides a flexible environment for building virtual network topologies, testing routing protocols, analyzing traffic flows, and experimenting with network automation.

## Technologies & Tools

- **Containerlab** – Container-based network topology deployment and management
- **FRRouting (FRR)** – Open-source routing protocol implementation
- **Ansible** – Network configuration management and automation
- **Docker** – Container runtime for virtual networking environments
- **Linux** – Network interfaces, routing tables, bridges, and packet forwarding
- **Wireshark / tcpdump** – Packet capture and protocol troubleshooting

## Lab Scenarios

### 1. BGP (Border Gateway Protocol)

BGP routing scenarios focused on understanding route propagation, path selection, and inter-AS connectivity.

Key areas:
- eBGP and iBGP routing
- BGP path selection and route attributes
- Route advertisement and filtering
- Multi-router BGP topologies
- Route convergence and troubleshooting

**Directory:** `BGP/`

### 2. EVPN and VXLAN

Exploration of Ethernet VPN and VXLAN technologies used in modern data center networking.

Key areas:
- BGP EVPN control plane
- VXLAN overlay networking
- VTEP connectivity and route propagation
- Layer 2 and Layer 3 overlay concepts
- EVPN route types and troubleshooting

**Directory:** `EVPN-EBGP/`

### 3. MPLS (Multiprotocol Label Switching)

Labs focused on MPLS forwarding and service provider network architectures.

Key areas:
- MPLS label switching
- Provider and customer edge connectivity
- Underlay routing integration
- MPLS forwarding and troubleshooting

**Directory:** `MPLS/`

### 4. OSPF (Open Shortest Path First)

OSPF scenarios for studying internal gateway routing and network convergence.

Key areas:
- OSPF neighbor relationships
- Single-area and multi-area routing
- Link-state database analysis
- Route advertisement and path selection
- OSPF troubleshooting

**Directory:** `OSPF/`

### 5. Multicast Networking

Multicast routing experiments covering group membership and multicast forwarding.

Key areas:
- Multicast routing concepts
- IGMP group membership
- PIM multicast routing
- Reverse Path Forwarding (RPF)
- Multicast traffic troubleshooting

**Directory:** `MULTICAST/`

### 6. Full Internet Simulation

Virtual networking scenarios for exploring interconnected routing domains and internet-style network architectures.

**Directory:** `FULL_INTERNET/`

### 7. Single Node Lab

Simplified networking environments for testing individual network functions, Linux networking commands, and basic configurations.

**Directory:** `SINGLE_NODE/`

## Network Automation with Ansible

This repository includes Ansible-based network automation experiments for simplifying network configuration and lab management.

Automation objectives include:

- Automating network configuration deployment
- Managing multiple network devices from a centralized environment
- Reducing repetitive configuration tasks
- Testing configuration consistency
- Exploring Infrastructure as Code (IaC) practices

**Directory:** `ansible/config_ansible/network-lab/`

## Getting Started

### Prerequisites

A Linux environment with the following tools installed:

- Docker
- Containerlab
- FRRouting-compatible container images
- Ansible (for automation scenarios)

### Clone the Repository

```bash
git clone https://github.com/jiegitrepo/network_container_lab.git
cd network_container_lab
```

### Deploy a Lab

Navigate to the desired lab directory and locate its Containerlab topology YAML file.

Deploy using:

```bash
sudo containerlab deploy -t <topology-file>.yml
```

Check deployed containers:

```bash
sudo containerlab inspect -t <topology-file>.yml
```

Access a running network container:

```bash
docker exec -it <container-name> vtysh
```

View routing information using FRRouting:

```bash
show ip route
show bgp summary
show ip ospf neighbor
```

Destroy the lab when finished:

```bash
sudo containerlab destroy -t <topology-file>.yml
```

> Note: Some scenarios require additional Linux kernel capabilities, container privileges, or specific FRRouting versions. Review each lab's configuration before deployment.

## Repository Structure

```text
network_container_lab/
├── BGP/
├── EVPN-EBGP/
├── MPLS/
├── MULTICAST/
├── OSPF/
├── FULL_INTERNET/
├── SINGLE_NODE/
├── ansible/
│   └── config_ansible/
│       └── network-lab/
├── Commands.txt
└── README.md
```

## Project Objectives

This repository serves as a hands-on learning and experimentation environment for:

- Enterprise and service provider routing technologies
- Data center networking and overlay architectures
- Network automation and Infrastructure as Code
- Network troubleshooting and packet-level analysis
- Routing protocol behavior and convergence
- Designing and validating network topologies before production implementation

## Disclaimer

This repository is intended for **educational, laboratory, and technical experimentation purposes**.

Configurations are designed for simulated environments and may require modification before use in production networks.

## Author

**Benjie Balolong**
Network Engineer | Network Automation | Enterprise & Service Provider Networking
