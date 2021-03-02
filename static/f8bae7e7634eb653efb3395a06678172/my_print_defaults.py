from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

My_Print_Defaults_V0_1_0 = CommandToolBuilder(tool="my_print_defaults", base_command=["my_print_defaults"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="Deprecated, please use --defaults-file instead. Name of\nconfig file to read; if no extension is given, default\nextension (e.g., .ini or .cnf) will be added")), ToolInput(tag="in_defaults_file", input_type=File(optional=True), prefix="--defaults-file", doc=InputDocumentation(doc="Like --config-file, except: if first option, then read\nthis file only, do not read global or per-user config\nfiles; should be the first option")), ToolInput(tag="in_defaults_extra_file", input_type=File(optional=True), prefix="--defaults-extra-file", doc=InputDocumentation(doc="Read this file after the global config file and before\nthe config file in the users home directory; should be\nthe first option")), ToolInput(tag="in_defaults_group_suffix", input_type=String(optional=True), prefix="--defaults-group-suffix", doc=InputDocumentation(doc="In addition to the given groups, read also groups with\nthis suffix")), ToolInput(tag="in_extra_file", input_type=File(optional=True), prefix="--extra-file", doc=InputDocumentation(doc="Deprecated. Synonym for --defaults-extra-file.")), ToolInput(tag="in_no_defaults", input_type=Boolean(optional=True), prefix="--no-defaults", doc=InputDocumentation(doc="Ignore reading of default option file(s), except for\nlogin file.")), ToolInput(tag="in_login_path", input_type=File(optional=True), prefix="--login-path", doc=InputDocumentation(doc="Path to be read from under the login file.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the output level")), ToolInput(tag="in_groups", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    My_Print_Defaults_V0_1_0().translate("wdl", allow_empty_container=True)

