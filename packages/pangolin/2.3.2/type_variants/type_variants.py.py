from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Type_Variants_Py_V0_1_0 = CommandToolBuilder(tool="type_variants.py", base_command=["type_variants.py"], inputs=[ToolInput(tag="in_fast_a_in", input_type=String(optional=True), prefix="--fasta-in", doc=InputDocumentation(doc="alignment to type, in fasta format")), ToolInput(tag="in_variants_config", input_type=File(optional=True), prefix="--variants-config", doc=InputDocumentation(doc="config file containing variants to type. Format is like:\nsnp:T6954C\ndel:11288:9\naa:orf1ab:T1001I\nsnp and del positions are 1-based nucleotide position relative to the alignment\naa position is 1-based codon position relative to the cds\nNo header line or comment lines are permitted")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Wuhan-Hu-1 in fasta format (for typing the reference allele at deletions and sanity checking the config file)")), ToolInput(tag="in_variants_out", input_type=File(optional=True), prefix="--variants-out", doc=InputDocumentation(doc="csv file to write")), ToolInput(tag="in_append_genotypes", input_type=File(optional=True), prefix="--append-genotypes", doc=InputDocumentation(doc="if invoked, write the genotype for each variant in the config file to the output"))], outputs=[ToolOutput(tag="out_append_genotypes", output_type=File(optional=True), selector=InputSelector(input_to_select="in_append_genotypes", type_hint=File()), doc=OutputDocumentation(doc="if invoked, write the genotype for each variant in the config file to the output"))], container="quay.io/biocontainers/pangolin:2.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Type_Variants_Py_V0_1_0().translate("wdl")

