from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ppanggolin_Info_V0_1_0 = CommandToolBuilder(tool="ppanggolin_info", base_command=["ppanggolin", "info"], inputs=[ToolInput(tag="in_pan_genome", input_type=File(optional=True), prefix="--pangenome", doc=InputDocumentation(doc="The pangenome .h5 file (default: None)")), ToolInput(tag="in_parameters", input_type=Boolean(optional=True), prefix="--parameters", doc=InputDocumentation(doc="Shows the parameters used (or computed) for each step\nof the pangenome generation (default: False)")), ToolInput(tag="in_content", input_type=Boolean(optional=True), prefix="--content", doc=InputDocumentation(doc="Shows detailled informations about the pangenome's\ncontent (default: False)")), ToolInput(tag="in_status", input_type=Boolean(optional=True), prefix="--status", doc=InputDocumentation(doc="Shows informations about the statuses of the different\nelements of the pangenome (what has been computed, or\nnot) (default: False)\n"))], outputs=[], container="quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanggolin_Info_V0_1_0().translate("wdl")

