from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Lra_Global_V0_1_0 = CommandToolBuilder(tool="lra_global", base_command=["lra", "global"], inputs=[ToolInput(tag="in_ccs", input_type=Boolean(optional=True), prefix="-CCS", doc=InputDocumentation(doc="(flag) Index for aligning CCS reads")), ToolInput(tag="in_clr", input_type=Boolean(optional=True), prefix="-CLR", doc=InputDocumentation(doc="(flag) Index for aligning CLR reads")), ToolInput(tag="in_ont", input_type=Boolean(optional=True), prefix="-ONT", doc=InputDocumentation(doc="(flag) Index for aligning Nanopore reads")), ToolInput(tag="in_contig", input_type=Boolean(optional=True), prefix="-CONTIG", doc=InputDocumentation(doc="(flag) Index for aligning large contigs")), ToolInput(tag="in_int_minimizer_window", input_type=Boolean(optional=True), prefix="-W", doc=InputDocumentation(doc="(int) Minimizer window size (10).")), ToolInput(tag="in_int_maximum_minimizer", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="(int) Maximum minimizer frequency. (default: 60 for CLR and NANO reads; 50 for CCS reads)")), ToolInput(tag="in_int_word_size", input_type=Boolean(optional=True), prefix="-K", doc=InputDocumentation(doc="(int) Word size")), ToolInput(tag="in_help", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="help.")), ToolInput(tag="in_lra", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_fa", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/lra:1.1.2--h5ef6573_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lra_Global_V0_1_0().translate("wdl")

