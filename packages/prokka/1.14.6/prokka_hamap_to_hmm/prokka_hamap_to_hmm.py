from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Prokka_Hamap_To_Hmm_V0_1_0 = CommandToolBuilder(tool="prokka_hamap_to_hmm", base_command=["prokka-hamap_to_hmm"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="!      Verbose progress (default '0').")), ToolInput(tag="in_datadir", input_type=File(optional=True), prefix="--datadir", doc=InputDocumentation(doc="Path to downloaded HAMAP folder (ftp://ftp.expasy.org/databases/hamap/) (default '').")), ToolInput(tag="in_sep", input_type=String(optional=True), prefix="--sep", doc=InputDocumentation(doc="Separator between EC/gene/product (default '~~~').")), ToolInput(tag="in_blank", input_type=String(optional=True), prefix="--blank", doc=InputDocumentation(doc="Replace empty EC/gene/product with this (default '')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prokka_Hamap_To_Hmm_V0_1_0().translate("wdl", allow_empty_container=True)

