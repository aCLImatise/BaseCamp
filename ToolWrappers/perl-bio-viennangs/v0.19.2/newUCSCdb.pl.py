from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Newucscdb_Pl_V0_1_0 = CommandToolBuilder(tool="newUCSCdb.pl", base_command=["newUCSCdb.pl"], inputs=[ToolInput(tag="in_db", input_type=Boolean(optional=True), prefix="-db", doc=InputDocumentation(doc="<string>  new database name                        ()")), ToolInput(tag="in_fa", input_type=Boolean(optional=True), prefix="-fa", doc=InputDocumentation(doc="<string>  (multi) fasta file holding sequence      ()")), ToolInput(tag="in_tax", input_type=Boolean(optional=True), prefix="-tax", doc=InputDocumentation(doc="<string>  taxonomy ID                              ()")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="-genome", doc=InputDocumentation(doc="<string>  genome name                              ()")), ToolInput(tag="in_sname", input_type=Boolean(optional=True), prefix="-sname", doc=InputDocumentation(doc="<string>  scientific name                          ()")), ToolInput(tag="in_assembly", input_type=String(optional=True), prefix="-assembly", doc=InputDocumentation(doc="assembly                                 ()")), ToolInput(tag="in_pos", input_type=Boolean(optional=True), prefix="-pos", doc=InputDocumentation(doc="<string>  default position                         ()")), ToolInput(tag="in_key", input_type=Boolean(optional=True), prefix="-key", doc=InputDocumentation(doc="<int>     order key                                ()")), ToolInput(tag="in_source", input_type=Boolean(optional=True), prefix="-source", doc=InputDocumentation(doc="<string>  genome/assembly/annotation source        ()")), ToolInput(tag="in_clade", input_type=Boolean(optional=True), prefix="-clade", doc=InputDocumentation(doc="<string>  genome clade (mammal,plants,bateria,...) ()"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Newucscdb_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

