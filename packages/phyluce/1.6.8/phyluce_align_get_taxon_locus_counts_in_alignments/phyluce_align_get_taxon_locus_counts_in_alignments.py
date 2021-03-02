from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Phyluce_Align_Get_Taxon_Locus_Counts_In_Alignments_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_taxon_locus_counts_in_alignments", base_command=["phyluce_align_get_taxon_locus_counts_in_alignments"], inputs=[ToolInput(tag="in_input_directory_alignment", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The input directory of alignment files")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format\n")), ToolInput(tag="in_var_2", input_type=String(), position=0, doc=InputDocumentation(doc="[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Taxon_Locus_Counts_In_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

