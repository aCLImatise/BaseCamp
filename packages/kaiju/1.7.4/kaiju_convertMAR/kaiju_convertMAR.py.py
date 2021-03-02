from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Kaiju_Convertmar_Py_V0_1_0 = CommandToolBuilder(tool="kaiju_convertMAR.py", base_command=["kaiju-convertMAR.py"], inputs=[ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="MarRef TSV file path (default: MarRef.tsv)")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="MarDB TSV file path (default: MarDB.tsv)")), ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="NCBI nodes.dmp file path (default: nodes.dmp)")), ToolInput(tag="in_genomes", input_type=Directory(optional=True), prefix="--genomes", doc=InputDocumentation(doc="genomes download directory (default: genomes)"))], outputs=[], container="quay.io/biocontainers/kaiju:1.7.4--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Convertmar_Py_V0_1_0().translate("wdl")

