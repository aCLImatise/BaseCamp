from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Pbmarkdup_V0_1_0 = CommandToolBuilder(tool="pbmarkdup", base_command=["pbmarkdup"], inputs=[ToolInput(tag="in_cross_library", input_type=Boolean(optional=True), prefix="--cross-library", doc=InputDocumentation(doc="Identify duplicates across sequencing libraries (LB tag in read group).")), ToolInput(tag="in_rmd_up", input_type=Boolean(optional=True), prefix="--rmdup", doc=InputDocumentation(doc="Exclude duplicates from OUTFILE. Redundant when --dup-file is provided.")), ToolInput(tag="in_dup_file", input_type=Boolean(optional=True), prefix="--dup-file", doc=InputDocumentation(doc="STR   Write duplicates to this file instead of OUTFILE.")), ToolInput(tag="in_clobber", input_type=Boolean(optional=True), prefix="--clobber", doc=InputDocumentation(doc="Overwrite OUTFILE if it exists.")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="INT   Number of threads to use, 0 means autodetection. [0]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_in_file_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_fof_n", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile_dot_bam_vertical_line_xml_vertical_line_fado_tgz_vertical_line_fq_do_tgz", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_str", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_as", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pbmarkdup:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbmarkdup_V0_1_0().translate("wdl")

