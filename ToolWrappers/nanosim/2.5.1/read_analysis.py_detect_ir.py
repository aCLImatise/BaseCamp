from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Read_Analysis_Py_Detect_Ir_V0_1_0 = CommandToolBuilder(tool="read_analysis.py_detect_ir", base_command=["read_analysis.py", "detect_ir"], inputs=[ToolInput(tag="in_annotation", input_type=File(optional=True), prefix="--annotation", doc=InputDocumentation(doc="Annotation file in ensemble GTF/GFF formats")), ToolInput(tag="in_read", input_type=String(optional=True), prefix="--read", doc=InputDocumentation(doc="Input read for training, not required if alignment\nfiles are provided")), ToolInput(tag="in_ref_g", input_type=File(optional=True), prefix="--ref_g", doc=InputDocumentation(doc="Reference genome, not required if genome alignment\nfile is provided")), ToolInput(tag="in_ref_t", input_type=File(optional=True), prefix="--ref_t", doc=InputDocumentation(doc="Reference Transcriptome, not required if transcriptome\nalignment file is provided")), ToolInput(tag="in_aligner", input_type=String(optional=True), prefix="--aligner", doc=InputDocumentation(doc="The aligner to be used: minimap2 or LAST (Default =\nminimap2)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="The output name and location")), ToolInput(tag="in_g_al_nm", input_type=File(optional=True), prefix="--g_alnm", doc=InputDocumentation(doc="Genome alignment file in sam or maf format (optional)")), ToolInput(tag="in_t_al_nm", input_type=File(optional=True), prefix="--t_alnm", doc=InputDocumentation(doc="Transcriptome alignment file in sam or maf format\n(optional)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="Number of threads for alignment (Default = 1)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Analysis_Py_Detect_Ir_V0_1_0().translate("wdl", allow_empty_container=True)

