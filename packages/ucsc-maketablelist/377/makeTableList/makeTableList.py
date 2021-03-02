from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Maketablelist_V0_1_0 = CommandToolBuilder(tool="makeTableList", base_command=["makeTableList"], inputs=[ToolInput(tag="in_host", input_type=Boolean(optional=True), prefix="-host", doc=InputDocumentation(doc="show tables: mysql host")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="-user", doc=InputDocumentation(doc="show tables: mysql user")), ToolInput(tag="in_password", input_type=Boolean(optional=True), prefix="-password", doc=InputDocumentation(doc="show tables: mysql password")), ToolInput(tag="in_to_prof", input_type=Boolean(optional=True), prefix="-toProf", doc=InputDocumentation(doc="optional: mysql profile to write table list to (target server)")), ToolInput(tag="in_to_host", input_type=Boolean(optional=True), prefix="-toHost", doc=InputDocumentation(doc="alternative to toProf: mysql target host")), ToolInput(tag="in_to_user", input_type=Boolean(optional=True), prefix="-toUser", doc=InputDocumentation(doc="alternative to toProf: mysql target user")), ToolInput(tag="in_to_password", input_type=Boolean(optional=True), prefix="-toPassword", doc=InputDocumentation(doc="alternative to toProf: mysql target pwd")), ToolInput(tag="in_hg_central", input_type=Boolean(optional=True), prefix="-hgcentral", doc=InputDocumentation(doc="specify an alternative hgcentral db name when using -all")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc="recreate tableList for all active assemblies in hg.conf's hgcentral")), ToolInput(tag="in_big_files", input_type=Boolean(optional=True), prefix="-bigFiles", doc=InputDocumentation(doc="create table with tuples (track, name of bigfile)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maketablelist_V0_1_0().translate("wdl", allow_empty_container=True)

