from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Jdb_V0_1_0 = CommandToolBuilder(tool="jdb", base_command=["jdb"], inputs=[ToolInput(tag="in_sourcepath", input_type=Boolean(optional=True), prefix="-sourcepath", doc=InputDocumentation(doc="<directories separated by ':'>\ndirectories in which to look for source files")), ToolInput(tag="in_attach", input_type=String(optional=True), prefix="-attach", doc=InputDocumentation(doc="attach to a running VM at the specified address using standard connector")), ToolInput(tag="in_listen", input_type=String(optional=True), prefix="-listen", doc=InputDocumentation(doc="wait for a running VM to connect at the specified address using standard connector")), ToolInput(tag="in_listen_any", input_type=Boolean(optional=True), prefix="-listenany", doc=InputDocumentation(doc="wait for a running VM to connect at any available address using standard connector")), ToolInput(tag="in_launch", input_type=Boolean(optional=True), prefix="-launch", doc=InputDocumentation(doc="launch VM immediately instead of waiting for 'run' command")), ToolInput(tag="in_list_connectors", input_type=Boolean(optional=True), prefix="-listconnectors", doc=InputDocumentation(doc="list the connectors available in this VM")), ToolInput(tag="in_connect", input_type=Int(optional=True), prefix="-connect", doc=InputDocumentation(doc=":<name1>=<value1>,...\nconnect to target VM using named connector with listed argument values")), ToolInput(tag="in_dbg_trace", input_type=Boolean(optional=True), prefix="-dbgtrace", doc=InputDocumentation(doc="[flags] print info for debugging jdb")), ToolInput(tag="in_t_client", input_type=Boolean(optional=True), prefix="-tclient", doc=InputDocumentation(doc="run the application in the HotSpot(TM) Client Compiler")), ToolInput(tag="in_t_server", input_type=Boolean(optional=True), prefix="-tserver", doc=InputDocumentation(doc="run the application in the HotSpot(TM) Server Compiler")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="[:class|gc|jni]\nturn on verbose mode")), ToolInput(tag="in_namevalue_set_property", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="<name>=<value>  set a system property")), ToolInput(tag="in_classpath", input_type=Boolean(optional=True), prefix="-classpath", doc=InputDocumentation(doc="<directories separated by ':'>\nlist directories in which to look for classes")), ToolInput(tag="in_option_nonstandard_target", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="<option>        non-standard target VM option")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_class", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jdb_V0_1_0().translate("wdl", allow_empty_container=True)

