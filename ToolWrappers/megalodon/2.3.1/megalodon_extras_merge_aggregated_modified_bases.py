from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Megalodon_Extras_Merge_Aggregated_Modified_Bases_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_merge_aggregated_modified_bases", base_command=["megalodon_extras", "merge", "aggregated_modified_bases"], inputs=[ToolInput(tag="in_output_bed_methyl_file", input_type=File(optional=True), prefix="--output-bed-methyl-file", doc=InputDocumentation(doc="Output bedmethyl filename. Cannot exist before this\ncommand. Default: merged_modified_bases.bed")), ToolInput(tag="in_sorted_inputs", input_type=Boolean(optional=True), prefix="--sorted-inputs", doc=InputDocumentation(doc="If input bedmethyl files are sorted, files will be\nmerged without reading full file into memory. Sort\norder should be `sort -k1,1V -k2,2n`.\n"))], outputs=[ToolOutput(tag="out_output_bed_methyl_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_methyl_file", type_hint=File()), doc=OutputDocumentation(doc="Output bedmethyl filename. Cannot exist before this\ncommand. Default: merged_modified_bases.bed"))], container="quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Merge_Aggregated_Modified_Bases_V0_1_0().translate("wdl")

