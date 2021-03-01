from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Import_Classification_Data_R_V0_1_0 = CommandToolBuilder(tool="import_classification_data.R", base_command=["import_classification_data.R"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="Config file in .yaml format")), ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="Which tool's classifiers should be imported?")), ToolInput(tag="in_classifiers_output_dir", input_type=Boolean(optional=True), prefix="--classifiers-output-dir", doc=InputDocumentation(doc="Path for directory storing imported classifiers")), ToolInput(tag="in_get_sd_rf", input_type=Boolean(optional=True), prefix="--get-sdrf", doc=InputDocumentation(doc="Should SDRF file(s) be downloaded? Default: FALSE")), ToolInput(tag="in_condensed_sd_rf", input_type=Boolean(optional=True), prefix="--condensed-sdrf", doc=InputDocumentation(doc="If --get-sdrf is set to TRUE, import condensed SDRF? By default, a normal version is imported. Default: FALSE")), ToolInput(tag="in_sd_rf_output_dir", input_type=File(optional=True), prefix="--sdrf-output-dir", doc=InputDocumentation(doc="Output path for imported SDRF files directory")), ToolInput(tag="in_get_tool_perf_table", input_type=Boolean(optional=True), prefix="--get-tool-perf-table", doc=InputDocumentation(doc="Should the tool performance table be imported? Default: FALSE")), ToolInput(tag="in_tool_perf_table_output_path", input_type=File(optional=True), prefix="--tool-perf-table-output-path", doc=InputDocumentation(doc="Output path for imported SDRF files directory"))], outputs=[ToolOutput(tag="out_sd_rf_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sd_rf_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output path for imported SDRF files directory")), ToolOutput(tag="out_tool_perf_table_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_tool_perf_table_output_path", type_hint=File()), doc=OutputDocumentation(doc="Output path for imported SDRF files directory"))], container="quay.io/biocontainers/atlas-data-import:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Import_Classification_Data_R_V0_1_0().translate("wdl")

