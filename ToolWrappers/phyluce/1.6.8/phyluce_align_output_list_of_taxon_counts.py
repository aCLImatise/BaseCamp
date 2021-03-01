from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Phyluce_Align_Output_List_Of_Taxon_Counts_V0_1_0 = CommandToolBuilder(tool="phyluce_align_output_list_of_taxon_counts", base_command=["phyluce_align_output_list_of_taxon_counts"], inputs=[ToolInput(tag="in_fast_as", input_type=Directory(optional=True), prefix="--fastas", doc=InputDocumentation(doc="The directory containing fastas to checked. (default:\nNone)")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input file format. (default: fasta)")), ToolInput(tag="in_min_count", input_type=Int(optional=True), prefix="--min-count", doc=InputDocumentation(doc="The min count of taxa allowed in a fasta file\n(default: 3)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.\n(default: 1)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Output_List_Of_Taxon_Counts_V0_1_0().translate("wdl", allow_empty_container=True)

