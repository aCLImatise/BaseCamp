from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Obisilva_V0_1_0 = CommandToolBuilder(tool="obisilva", base_command=["obisilva"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--DEBUG", doc=InputDocumentation(doc="Set logging in debug mode")), ToolInput(tag="in_without_progress_bar", input_type=Boolean(optional=True), prefix="--without-progress-bar", doc=InputDocumentation(doc="desactivate progress bar")), ToolInput(tag="in_ssu", input_type=Boolean(optional=True), prefix="--ssu", doc=InputDocumentation(doc="specify that you are interested in the SSU database")), ToolInput(tag="in_lsu", input_type=Boolean(optional=True), prefix="--lsu", doc=InputDocumentation(doc="specify that you are interested in the LSU database")), ToolInput(tag="in_parc", input_type=Boolean(optional=True), prefix="--parc", doc=InputDocumentation(doc="specify that you are interested in the parc version of\nthe database")), ToolInput(tag="in_ref", input_type=Boolean(optional=True), prefix="--ref", doc=InputDocumentation(doc="specify that you are interested in the reference\nversion of the database")), ToolInput(tag="in_nr", input_type=Boolean(optional=True), prefix="--nr", doc=InputDocumentation(doc="specify that you are interested in the non redundant\nversion of the database")), ToolInput(tag="in_trunc", input_type=Boolean(optional=True), prefix="--trunc", doc=InputDocumentation(doc="specify that you are interested in the truncated\nversion of database")), ToolInput(tag="in_local_db", input_type=Directory(optional=True), prefix="--localdb", doc=InputDocumentation(doc="Local copy of the files located in the specified\ndirectory will be used instead of those present on the\nARB-Silva web site")), ToolInput(tag="in__mintaxidminimal_taxid", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="####, --min-taxid=####\nminimal taxid for the species taxid\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obisilva_V0_1_0().translate("wdl", allow_empty_container=True)

