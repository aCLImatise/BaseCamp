from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Remove_Track_Pl_V0_1_0 = CommandToolBuilder(tool="remove_track.pl", base_command=["remove-track.pl"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="/to/data/dir\nPath to the JBrowse data directory to operate on.")), ToolInput(tag="in_track_label", input_type=String(optional=True), prefix="--trackLabel", doc=InputDocumentation(doc="Track label(s) to delete. This option may be specified multiple\ntimes to delete multiple tracks.")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="--delete", doc=InputDocumentation(doc="In addition to removing the track configuration so that JBrowse will\nnot display the track, delete the track data as well. Be careful!")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print any progress messages.\n"))], outputs=[], container="quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Track_Pl_V0_1_0().translate("wdl")

