from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bold2Utax_Py_V0_1_0 = CommandToolBuilder(tool="bold2utax.py", base_command=["bold2utax.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Bold data dump TSV format (default: None)")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Basename for UTAX formated FASTA output (default:\nNone)")), ToolInput(tag="in_cluster", input_type=String(optional=True), prefix="--cluster", doc=InputDocumentation(doc="Post processsing cluster (default: None)")), ToolInput(tag="in_drop_suppressed", input_type=Boolean(optional=True), prefix="--drop_suppressed", doc=InputDocumentation(doc="Drop IDs if SUPPRESSED in header (default: False)")), ToolInput(tag="in_require_genbank", input_type=Boolean(optional=True), prefix="--require_genbank", doc=InputDocumentation(doc="Require output to have GenBank Accessions (default:\nFalse)"))], outputs=[], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bold2Utax_Py_V0_1_0().translate("wdl")

