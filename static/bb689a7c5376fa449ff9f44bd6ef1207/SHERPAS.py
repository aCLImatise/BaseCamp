from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Sherpas_V0_1_0 = CommandToolBuilder(tool="SHERPAS", base_command=["SHERPAS"], inputs=[ToolInput(tag="in_path_phylokmer_database", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Path to the phylo-kmer database")), ToolInput(tag="in_path_strainalignment_file", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Path to the strain-alignment file")), ToolInput(tag="in_path_query_file", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Path to the query file")), ToolInput(tag="in_path_output_directory", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Path to the output directory")), ToolInput(tag="in_window_size_default", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="Window size (default=300)")), ToolInput(tag="in_method_f_r", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Method (F or R, default=F)")), ToolInput(tag="in_threshold_unassigned_regions", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Threshold for unassigned regions (default=100 [F] or 0.99 [R])")), ToolInput(tag="in_activates_circularity_options", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Activates circularity options (to be used for circular queries)")), ToolInput(tag="in_changes_output_layout", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Changes output layout")), ToolInput(tag="in_disables_posttreatment_unassigned", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Disables post-treatment of unassigned regions"))], outputs=[ToolOutput(tag="out_path_output_directory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Path to the output directory"))], container="quay.io/biocontainers/sherpas:1.0.2--h78a066a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sherpas_V0_1_0().translate("wdl")

