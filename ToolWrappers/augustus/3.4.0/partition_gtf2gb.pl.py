from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Partition_Gtf2Gb_Pl_V0_1_0 = CommandToolBuilder(tool="partition_gtf2gb.pl", base_command=["partition_gtf2gb.pl"], inputs=[ToolInput(tag="in_min_cluster_size", input_type=Int(optional=True), prefix="--minClusterSize", doc=InputDocumentation(doc="minimal number of genes in a one cluster,\ndefault n=20")), ToolInput(tag="in_max_flanking_region_size", input_type=Int(optional=True), prefix="--maxFlankingRegionSize", doc=InputDocumentation(doc="maximal size of flanking intergenic region to be\nexcised around clusters of genes,\ndefault n=2000")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print verbose warning messages")), ToolInput(tag="in_entry_two", input_type=Int(), position=2, doc=InputDocumentation(doc="NCBI   CDS 7   28  0 + . gene_id 'g3'; transcript_id 'g3.t1'")), ToolInput(tag="in_locus", input_type=String(), position=0, doc=InputDocumentation(doc="NC_010473.1_5128-6494   1367 bp  DNA")), ToolInput(tag="in_features", input_type=String(), position=1, doc=InputDocumentation(doc="Location/Qualifiers")), ToolInput(tag="in_origin", input_type=String(), position=0, doc=InputDocumentation(doc="1 aatgcggtaa cttagagatt aggattgcgg agaataacaa ccgccgttct catcgagtaa\n61 tctccggata tcgacccata acgggcaatg ataaaaggag taacctgtga aaaagatgca\n...\n1261 cagcgtatag cgcgtggtgg tcaacgggct ttggtaatca agcgttttcg caggtgaaat\n1321 aagaatcagc atatccagtc cttgcaggaa atttatgccg"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Partition_Gtf2Gb_Pl_V0_1_0().translate("wdl")

