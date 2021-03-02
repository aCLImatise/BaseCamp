from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, Int

Abricate_Get_Db_V0_1_0 = CommandToolBuilder(tool="abricate_get_db", base_command=["abricate-get_db"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="!        Verbose debug output (default '0').")), ToolInput(tag="in_db_dir", input_type=Directory(optional=True), prefix="--dbdir", doc=InputDocumentation(doc="Parent folder (default '/usr/local/db').")), ToolInput(tag="in_db", input_type=Int(optional=True), prefix="--db", doc=InputDocumentation(doc="Choices: argannot bacmet2 card ecoh ecoli_vf megares ncbi plasmidfinder resfinder vfdb victors (default '').")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="!        Force download even if exists (default '0')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abricate_Get_Db_V0_1_0().translate("wdl", allow_empty_container=True)

