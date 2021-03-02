from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Snpsift_Gwascat_V0_1_0 = CommandToolBuilder(tool="SnpSift_gwasCat", base_command=["SnpSift", "gwasCat"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="-config", doc=InputDocumentation(doc=": Specify config file")), ToolInput(tag="in__debug", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": Debug.")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="-db", doc=InputDocumentation(doc=": Database file name (for commands that require databases).")), ToolInput(tag="in_download", input_type=Boolean(optional=True), prefix="-download", doc=InputDocumentation(doc=": Download database, if not available locally. Default: true.")), ToolInput(tag="in_genome_version_commands", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=": Genome version (for commands that require databases).")), ToolInput(tag="in_no_download", input_type=Boolean(optional=True), prefix="-noDownload", doc=InputDocumentation(doc=": Do not download a database, if not available locally.")), ToolInput(tag="in_no_log", input_type=Boolean(optional=True), prefix="-noLog", doc=InputDocumentation(doc=": Do not report usage statistics to server.")), ToolInput(tag="in__verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose.")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_g_was_cat", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Gwascat_V0_1_0().translate("wdl", allow_empty_container=True)

