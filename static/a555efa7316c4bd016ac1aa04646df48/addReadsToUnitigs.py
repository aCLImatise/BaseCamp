from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Addreadstounitigs_V0_1_0 = CommandToolBuilder(tool="addReadsToUnitigs", base_command=["addReadsToUnitigs"], inputs=[ToolInput(tag="in_gatekeeper_store", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="gatekeeper store")), ToolInput(tag="in_version_tigstore_version", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="version   tigStore and version to modify")), ToolInput(tag="in_input_map_coords", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="input map coords")), ToolInput(tag="in_gatekeeper_output_fastquidmap", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="gatekeeper output fastqUIDmap for read name to IID translation")), ToolInput(tag="in_rebuild_consensus_including", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="rebuild consensus including the new reads")), ToolInput(tag="in_show_result", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show result")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="verbose")), ToolInput(tag="in_load_all", input_type=Boolean(optional=True), prefix="-loadall", doc=InputDocumentation(doc="load all reads in gkpStore into memory (faster consensus)")), ToolInput(tag="in_do_work_discard", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="do all the work, but discard the result")), ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Addreadstounitigs_V0_1_0().translate("wdl", allow_empty_container=True)

