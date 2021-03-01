from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Pyloh_Py_Preprocess_V0_1_0 = CommandToolBuilder(tool="PyLOH.py_preprocess", base_command=["PyLOH.py", "preprocess"], inputs=[ToolInput(tag="in_segments_bed", input_type=File(optional=True), prefix="--segments_bed", doc=InputDocumentation(doc="BED file for segments. If not provided, use autosomes\nas segments. Default is None.")), ToolInput(tag="in_wes", input_type=Boolean(optional=True), prefix="--WES", doc=InputDocumentation(doc="Flag indicating whether the BAM files are whole exome\nsequencing(WES) or not. If not provided, the BAM files\nare assumed to be whole genome sequencing(WGS).\nDefault is False.")), ToolInput(tag="in_min_depth", input_type=Int(optional=True), prefix="--min_depth", doc=InputDocumentation(doc="Minimum reads depth required for both normal and tumor\nsamples. Default is 20.")), ToolInput(tag="in_min_base_qual", input_type=Int(optional=True), prefix="--min_base_qual", doc=InputDocumentation(doc="Minimum base quality required. Default is 10.")), ToolInput(tag="in_min_map_qual", input_type=Int(optional=True), prefix="--min_map_qual", doc=InputDocumentation(doc="Minimum mapping quality required. Default is 10.")), ToolInput(tag="in_process_num", input_type=Int(optional=True), prefix="--process_num", doc=InputDocumentation(doc="Number of processes to launch for preprocessing.\nDefault is 1.\n")), ToolInput(tag="in_reference_genome", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file for reference genome.")), ToolInput(tag="in_normal_bam", input_type=String(), position=1, doc=InputDocumentation(doc="BAM file for normal sample.")), ToolInput(tag="in_tumor_bam", input_type=String(), position=2, doc=InputDocumentation(doc="BAM file for tumor sample.")), ToolInput(tag="in_filename_base", input_type=String(), position=3, doc=InputDocumentation(doc="Base name of preprocessed files to be created."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyloh_Py_Preprocess_V0_1_0().translate("wdl", allow_empty_container=True)

