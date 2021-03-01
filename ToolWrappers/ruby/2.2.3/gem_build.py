from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Gem_Build_V0_1_0 = CommandToolBuilder(tool="gem_build", base_command=["gem", "build"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="skip validation of the spec")), ToolInput(tag="in__verbose_set", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=", --[no-]verbose               Set the verbose level of output")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Silence commands")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="Use this config file instead of default")), ToolInput(tag="in_backtrace", input_type=Boolean(optional=True), prefix="--backtrace", doc=InputDocumentation(doc="Show stack backtrace on errors")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on Ruby debugging")), ToolInput(tag="in_gem_spec_file", input_type=String(), position=0, doc=InputDocumentation(doc="gemspec file name to build a gem for"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Build_V0_1_0().translate("wdl", allow_empty_container=True)

