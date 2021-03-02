from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int

Ppanini_V0_1_0 = CommandToolBuilder(tool="ppanini", base_command=["ppanini"], inputs=[ToolInput(tag="in_input_table", input_type=String(optional=True), prefix="--input_table", doc=InputDocumentation(doc="REQUIRED: Gene abundance table with metadata")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--output-folder", doc=InputDocumentation(doc="Folder containing results")), ToolInput(tag="in_basename", input_type=String(optional=True), prefix="--basename", doc=InputDocumentation(doc="BASENAME for all the output files")), ToolInput(tag="in_uniref_two_go", input_type=Int(optional=True), prefix="--uniref2go", doc=InputDocumentation(doc="uniref to GO term mapping file")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Choices: [DEBUG, INFO, WARNING, ERROR, CRITICAL]")), ToolInput(tag="in_abundance_detection_level", input_type=String(optional=True), prefix="--abundance-detection-level", doc=InputDocumentation(doc="Detection level of normalized relative abundance")), ToolInput(tag="in_t_shld_abund", input_type=Int(optional=True), prefix="--tshld-abund", doc=InputDocumentation(doc="[X] Percentile Cutoff for Abundance; Default=75th")), ToolInput(tag="in_t_shld_prev", input_type=String(optional=True), prefix="--tshld-prev", doc=InputDocumentation(doc="Percentile cutoff for Prevalence")), ToolInput(tag="in_beta", input_type=String(optional=True), prefix="--beta", doc=InputDocumentation(doc="Beta parameter for weights on percentiles"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Folder containing results"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_V0_1_0().translate("wdl", allow_empty_container=True)

