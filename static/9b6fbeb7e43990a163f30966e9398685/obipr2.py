from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Obipr2_V0_1_0 = CommandToolBuilder(tool="obipr2", base_command=["obipr2"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--DEBUG", doc=InputDocumentation(doc="Set logging in debug mode")), ToolInput(tag="in_without_progress_bar", input_type=Boolean(optional=True), prefix="--without-progress-bar", doc=InputDocumentation(doc="desactivate progress bar")), ToolInput(tag="in_local_db", input_type=Directory(optional=True), prefix="--localdb", doc=InputDocumentation(doc="Local copy of the files located in the specified\ndirectory will be used instead of those present on the\nPR2 web site")), ToolInput(tag="in__mintaxidminimal_taxid", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="####, --min-taxid=####\nminimal taxid for the species taxid\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obipr2_V0_1_0().translate("wdl", allow_empty_container=True)

