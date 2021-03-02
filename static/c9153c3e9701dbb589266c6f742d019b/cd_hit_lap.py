from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cd_Hit_Lap_V0_1_0 = CommandToolBuilder(tool="cd_hit_lap", base_command=["cd-hit-lap"], inputs=[ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file;")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file;")), ToolInput(tag="in_minimum_length_overlapping", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum length of overlapping part (default 20);")), ToolInput(tag="in_minimum_percentage_percentage", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Minimum percentage of overlapping part (default 0, any percentage);")), ToolInput(tag="in_description_length_default", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Description length (default 0, truncate at the first whitespace character)")), ToolInput(tag="in_random_number_seed", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Random number seed for shuffling (default 0, no shuffling; shuffled before sorting by length);")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="-stdout", doc=InputDocumentation(doc="Standard output type (default 'log', other options 'rep', 'clstr');"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file;"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cd_Hit_Lap_V0_1_0().translate("wdl", allow_empty_container=True)

