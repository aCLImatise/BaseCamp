from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Config_Data_V0_1_0 = CommandToolBuilder(tool="config_data", base_command=["config_data"], inputs=[ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="Print the value of a config option")), ToolInput(tag="in_eval", input_type=Boolean(optional=True), prefix="--eval", doc=InputDocumentation(doc="eval() config values before setting")), ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="--feature", doc=InputDocumentation(doc="Print the value of a feature or all features")), ToolInput(tag="in_module", input_type=String(optional=True), prefix="--module", doc=InputDocumentation(doc="The name of the module to configure (required)")), ToolInput(tag="in_set_config", input_type=String(optional=True), prefix="--set_config", doc=InputDocumentation(doc="=<value>   Set a config option to the given value")), ToolInput(tag="in_set_feature", input_type=String(optional=True), prefix="--set_feature", doc=InputDocumentation(doc="=<value>  Set a feature to 'true' or 'false'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Config_Data_V0_1_0().translate("wdl", allow_empty_container=True)

