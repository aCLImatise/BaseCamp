from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Funannotate_Setup_V0_1_0 = CommandToolBuilder(tool="funannotate_setup", base_command=["funannotate", "setup"], inputs=[ToolInput(tag="in_install", input_type=Boolean(optional=True), prefix="--install", doc=InputDocumentation(doc="Download format databases. Default: all\n[merops,uniprot,dbCAN,pfam,repeats,go,\nmibig,interpro,busco_outgroups,gene2product]")), ToolInput(tag="in_busco_db", input_type=Boolean(optional=True), prefix="--busco_db", doc=InputDocumentation(doc="Busco Databases to install. Default: dikarya [all,fungi,aves,etc]")), ToolInput(tag="in_database", input_type=Boolean(optional=True), prefix="--database", doc=InputDocumentation(doc="Path to funannotate database")), ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="--update", doc=InputDocumentation(doc="Check remote md5 and update if newer version found")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwriting database")), ToolInput(tag="in_wget", input_type=Boolean(optional=True), prefix="--wget", doc=InputDocumentation(doc="Use wget to download instead of python requests")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="Use local resource JSON file instead of current on github")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Setup_V0_1_0().translate("wdl")

