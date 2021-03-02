from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Ariba_Aln2Meta_V0_1_0 = CommandToolBuilder(tool="ariba_aln2meta", base_command=["ariba", "aln2meta"], inputs=[ToolInput(tag="in_genetic_code", input_type=Int(optional=True), prefix="--genetic_code", doc=InputDocumentation(doc="Number of genetic code to use. Currently supported\n1,4,11 [11]")), ToolInput(tag="in_variant_only", input_type=Boolean(optional=True), prefix="--variant_only", doc=InputDocumentation(doc="Use this to flag all sequences as variant only. By\ndefault they are considered to be presence/absence\n")), ToolInput(tag="in_aln_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Multi-fasta file of alignments")), ToolInput(tag="in_variants_tsv", input_type=String(), position=1, doc=InputDocumentation(doc="TSV file of variants information")), ToolInput(tag="in_out_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="Prefix of output filenames"))], outputs=[], container="quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ariba_Aln2Meta_V0_1_0().translate("wdl")

