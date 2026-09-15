### GIP Network Preprocessing

The transportation graph of the Graph Integration Platform is essentially a directed graph network containing information on accessibility for various modes of transport. This accessibility applies to both the forward and reverse directions. Restrictions and access permissions are represented by a decimal number, which is decoded using a bitmask. For example, if the decimal number 3 is given in the forward direction, it is broken down into the bit pattern 11. This means that the bits with IDs 0 and 1 are set, which, according to the Graph Integration Platform's bitmask, indicates accessibility for pedestrians and cyclists. In this way, the usability of individual edges for different modes of transport in both directions can be mapped precisely. Furthermore, the direction of digitization—that is, assigning accessibility to the forward or reverse direction—enables the correct representation of one-way rules for different modes of transport.

This transport network is provided as Open Government Data (OGD) by the Austrian Graph Integration Platform (GIP) in the form of a routable network for all modes of transport. The transportation graph from 2023 was used for all calculated time periods. The main reason for this lies in data availability and quality: content from the Graph Integration Platform (GIP) has only been published as Open Government Data and regularly updated since early 2016.

# austria-gip-decoder

The decoding of the decimal code into a bitmask is carried out as in the "austria-gip-decoder" repository (https://github.com/FloFrank/austria-gip-decoder). 


