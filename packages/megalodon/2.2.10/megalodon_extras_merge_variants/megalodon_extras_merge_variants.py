from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Megalodon_Extras_Merge_Variants_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_merge_variants", base_command=["megalodon_extras", "merge", "variants"], inputs=[ToolInput(tag="in_output_megalodon_results_dir", input_type=Directory(optional=True), prefix="--output-megalodon-results-dir", doc=InputDocumentation(doc="Output directory. Default:\nmegalodon_merge_vars_results")), ToolInput(tag="in_overwrite", input_type=Directory(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Overwrite output directory if it exists.")), ToolInput(tag="in_var_locations_on_disk", input_type=Boolean(optional=True), prefix="--var-locations-on-disk", doc=InputDocumentation(doc="Force sequnece variant locations to be stored only\nwithin on disk database table. This option will reduce\nthe RAM memory requirement, but may slow processing.\nDefault: Store positions in memory.\n")), ToolInput(tag="in_output_dot", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output_megalodon_results_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_megalodon_results_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. Default:\nmegalodon_merge_vars_results")), ToolOutput(tag="out_overwrite", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output directory if it exists."))], container="quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Merge_Variants_V0_1_0().translate("wdl")

