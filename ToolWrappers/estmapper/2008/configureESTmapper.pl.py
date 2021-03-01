from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int, Boolean

Configureestmapper_Pl_V0_1_0 = CommandToolBuilder(tool="configureESTmapper.pl", base_command=["configureESTmapper.pl"], inputs=[ToolInput(tag="in_genome", input_type=String(optional=True), prefix="-genome", doc=InputDocumentation(doc="the genome to map to")), ToolInput(tag="in_genome_dir", input_type=Directory(optional=True), prefix="-genomedir", doc=InputDocumentation(doc="the directory to save the configuration in")), ToolInput(tag="in_mer_size", input_type=Int(optional=True), prefix="-mersize", doc=InputDocumentation(doc="use m-mers (default 20)")), ToolInput(tag="in_mer_skip", input_type=Int(optional=True), prefix="-merskip", doc=InputDocumentation(doc="skip s m-mers between mers (default 0, use all mers)")), ToolInput(tag="in_memory", input_type=Int(optional=True), prefix="-memory", doc=InputDocumentation(doc="use M MB memory for the search processes (default 1000MB)")), ToolInput(tag="in_segments", input_type=Int(optional=True), prefix="-segments", doc=InputDocumentation(doc="use S search processes (default, based on memory size)")), ToolInput(tag="in_sge", input_type=Boolean(optional=True), prefix="-sge", doc=InputDocumentation(doc="compute the configuration on the grid; args are passed to qsub")), ToolInput(tag="in_sge_name", input_type=Boolean(optional=True), prefix="-sgename", doc=InputDocumentation(doc="sge job name (default 'EMconfig')")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="-local", doc=InputDocumentation(doc="compute the configuration right now (the default)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Configureestmapper_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

