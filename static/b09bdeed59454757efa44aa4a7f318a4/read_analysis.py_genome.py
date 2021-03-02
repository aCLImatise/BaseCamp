from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Read_Analysis_Py_Genome_V0_1_0 = CommandToolBuilder(tool="read_analysis.py_genome", base_command=["read_analysis.py", "genome"], inputs=[ToolInput(tag="in_read", input_type=String(optional=True), prefix="--read", doc=InputDocumentation(doc="Input read for training")), ToolInput(tag="in_ref_g", input_type=File(optional=True), prefix="--ref_g", doc=InputDocumentation(doc="Reference genome, not required if genome alignment\nfile is provided")), ToolInput(tag="in_aligner", input_type=String(optional=True), prefix="--aligner", doc=InputDocumentation(doc="The aligner to be used, minimap2 or LAST (Default =\nminimap2)")), ToolInput(tag="in_g_al_nm", input_type=File(optional=True), prefix="--g_alnm", doc=InputDocumentation(doc="Genome alignment file in sam or maf format (optional)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="The location and prefix of outputting profiles\n(Default = training)")), ToolInput(tag="in_no_model_fit", input_type=Boolean(optional=True), prefix="--no_model_fit", doc=InputDocumentation(doc="Disable model fitting step")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="Number of threads for alignment and model fitting\n(Default = 1)\n"))], outputs=[], container="quay.io/biocontainers/nanosim:2.6.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Analysis_Py_Genome_V0_1_0().translate("wdl")

