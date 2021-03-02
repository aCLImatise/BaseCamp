from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Circexplorer_Py_V0_1_0 = CommandToolBuilder(tool="CIRCexplorer.py", base_command=["CIRCexplorer.py"], inputs=[ToolInput(tag="in_fusion", input_type=File(optional=True), prefix="--fusion", doc=InputDocumentation(doc="TopHat-Fusion fusion BAM file. (used in TopHat-Fusion mapping)")), ToolInput(tag="in_jun_c", input_type=File(optional=True), prefix="--junc", doc=InputDocumentation(doc="STAR Chimeric junction file. (used in STAR mapping)")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome FASTA file.")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="Gene annotation.")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output prefix [default: CIRCexplorer].")), ToolInput(tag="in_tmp", input_type=Boolean(optional=True), prefix="--tmp", doc=InputDocumentation(doc="Keep temporary files.")), ToolInput(tag="in_no_fix", input_type=Boolean(optional=True), prefix="--no-fix", doc=InputDocumentation(doc="No-fix mode (useful for species with poor gene annotations)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circexplorer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

