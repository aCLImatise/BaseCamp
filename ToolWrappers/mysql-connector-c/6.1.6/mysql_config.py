from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mysql_Config_V0_1_0 = CommandToolBuilder(tool="mysql_config", base_command=["mysql_config"], inputs=[ToolInput(tag="in_cflags", input_type=Boolean(optional=True), prefix="--cflags", doc=InputDocumentation(doc="[-I/usr/local/include]")), ToolInput(tag="in_cxxflags", input_type=Boolean(optional=True), prefix="--cxxflags", doc=InputDocumentation(doc="[-I/usr/local/include]")), ToolInput(tag="in_include", input_type=Boolean(optional=True), prefix="--include", doc=InputDocumentation(doc="[-I/usr/local/include]")), ToolInput(tag="in_libs", input_type=Boolean(optional=True), prefix="--libs", doc=InputDocumentation(doc="[-L/usr/local/lib -lmysqlclient -lpthread -lm -lrt -ldl]")), ToolInput(tag="in_libs_r", input_type=Boolean(optional=True), prefix="--libs_r", doc=InputDocumentation(doc="[-L/usr/local/lib -lmysqlclient -lpthread -lm -lrt -ldl]")), ToolInput(tag="in_plugin_dir", input_type=Boolean(optional=True), prefix="--plugindir", doc=InputDocumentation(doc="[/usr/local/lib/plugin]")), ToolInput(tag="in_variable", input_type=String(optional=True), prefix="--variable", doc=InputDocumentation(doc="VAR is one of:\npkgincludedir [/usr/local/include]\npkglibdir     [/usr/local/lib]\nplugindir     [/usr/local/lib/plugin]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mysql_Config_V0_1_0().translate("wdl", allow_empty_container=True)

