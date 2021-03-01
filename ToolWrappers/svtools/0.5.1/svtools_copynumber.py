from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Svtools_Copynumber_V0_1_0 = CommandToolBuilder(tool="svtools_copynumber", base_command=["svtools", "copynumber"], inputs=[ToolInput(tag="in_coordinates", input_type=File(optional=True), prefix="--coordinates", doc=InputDocumentation(doc="file containing coordinate for which to retrieve\ncopynumber (required)")), ToolInput(tag="in_root", input_type=File(optional=True), prefix="--root", doc=InputDocumentation(doc="CNVnator .root histogram file (required)")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="CNVnator window size (required)")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="sample to annotate (required)")), ToolInput(tag="in_cnv_nator", input_type=File(optional=True), prefix="--cnvnator", doc=InputDocumentation(doc="path to cnvnator binary for the cnvnator used by\nspeedseq (required)")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="VCF input")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output VCF to write (default: stdout)")), ToolInput(tag="in_tempdir", input_type=File(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="Directory for temp file downloads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtools_Copynumber_V0_1_0().translate("wdl", allow_empty_container=True)

