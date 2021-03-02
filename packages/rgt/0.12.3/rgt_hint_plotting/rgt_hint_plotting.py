from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Rgt_Hint_Plotting_V0_1_0 = CommandToolBuilder(tool="rgt_hint_plotting", base_command=["rgt-hint", "plotting"], inputs=[ToolInput(tag="in_organism", input_type=File(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism considered on the analysis. Check our full\ndocumentation for all available options. All default\nfiles such as genomes will be based on the chosen\norganism and the data.config file.")), ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc=",FILE1_R")), ToolInput(tag="in_bias_table_one", input_type=File(optional=True), prefix="--bias-table1", doc=InputDocumentation(doc=",FILE1_R")), ToolInput(tag="in_bias_table_two", input_type=File(optional=True), prefix="--bias-table2", doc=InputDocumentation(doc=",FILE1_R")), ToolInput(tag="in_output_location", input_type=File(optional=True), prefix="--output-location", doc=InputDocumentation(doc="Path where the output bias table files will be\nwritten.")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="The prefix for results files."))], outputs=[ToolOutput(tag="out_output_location", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_location", type_hint=File()), doc=OutputDocumentation(doc="Path where the output bias table files will be\nwritten."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Hint_Plotting_V0_1_0().translate("wdl", allow_empty_container=True)

