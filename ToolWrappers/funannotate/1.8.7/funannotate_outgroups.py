from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Funannotate_Outgroups_V0_1_0 = CommandToolBuilder(tool="funannotate_outgroups", base_command=["funannotate", "outgroups"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Proteome multi-fasta file. Required.")), ToolInput(tag="in_species", input_type=Boolean(optional=True), prefix="--species", doc=InputDocumentation(doc="Species name for adding a species. Required.")), ToolInput(tag="in_busco_db", input_type=Boolean(optional=True), prefix="--busco_db", doc=InputDocumentation(doc="BUSCO db to use. Default. dikarya")), ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of CPUs to use for BUSCO search.")), ToolInput(tag="in_database", input_type=Boolean(optional=True), prefix="--database", doc=InputDocumentation(doc="Path to funannotate database. Default: $FUNANNOTATE_DB")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Outgroups_V0_1_0().translate("wdl")

