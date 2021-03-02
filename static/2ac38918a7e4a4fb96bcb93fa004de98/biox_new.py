from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Biox_New_V0_1_0 = CommandToolBuilder(tool="biox_new", base_command=["biox", "new"], inputs=[ToolInput(tag="in_plugins", input_type=Boolean(optional=True), prefix="--plugins", doc=InputDocumentation(doc="Load aplication plugins [Multiple; Split by ',']")), ToolInput(tag="in_plugins_opts", input_type=Boolean(optional=True), prefix="--plugins_opts", doc=InputDocumentation(doc="Options for application plugins [Key-Value]")), ToolInput(tag="in_no_configs", input_type=String(optional=True), prefix="--no_configs", doc=InputDocumentation(doc="HPC::Runner not to load any\nconfigs [Flag]")), ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="Override the search paths and supply your own")), ToolInput(tag="in_search", input_type=Boolean(optional=True), prefix="--search", doc=InputDocumentation(doc="Search for config files in ~/.config.(ext) and in\nyour current working directory. [Flag]")), ToolInput(tag="in_search_path", input_type=Boolean(optional=True), prefix="--search_path", doc=InputDocumentation(doc="Enable a search path for configs. Default is the\nhome dir and your cwd. [Multiple]")), ToolInput(tag="in_rules", input_type=Boolean(optional=True), prefix="--rules", doc=InputDocumentation(doc="Add rules [Multiple; Split by ',']")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="--stdout", doc=InputDocumentation(doc="Write workflows to STDOUT [Flag]")), ToolInput(tag="in_outfile", input_type=Boolean(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Write your workflow to a file")), ToolInput(tag="in_workflow", input_type=Boolean(optional=True), prefix="--workflow", doc=InputDocumentation(doc="Supply a workflow [Required]")), ToolInput(tag="in_config_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--config_base         Basename of config files [Default:'.bioxworkflow']")), ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="Prints this usage information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biox_New_V0_1_0().translate("wdl", allow_empty_container=True)

