from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Directory, File, Boolean

Groot_Get_V0_1_0 = CommandToolBuilder(tool="groot_get", base_command=["groot", "get"], inputs=[ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="database to download (please choose: arg-annot/resfinder/card/groot-db/groot-core-db) (default 'arg-annot')")), ToolInput(tag="in_identity", input_type=Int(optional=True), prefix="--identity", doc=InputDocumentation(doc="the sequence identity used to cluster the database (only 90 available atm) (default '90')")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="directory to save the database to (default '.')")), ToolInput(tag="in_index_dir", input_type=Directory(optional=True), prefix="--indexDir", doc=InputDocumentation(doc="directory for to write/read the GROOT index files")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="filename for log file (default 'groot.log')")), ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="number of processors to use (default 1)")), ToolInput(tag="in_profiling", input_type=Boolean(optional=True), prefix="--profiling", doc=InputDocumentation(doc="create the files needed to profile GROOT using the go tool pprof"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Groot_Get_V0_1_0().translate("wdl", allow_empty_container=True)

