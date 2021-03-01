from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Rtg_Vcfsplit_V0_1_0 = CommandToolBuilder(tool="rtg_vcfsplit", base_command=["rtg", "vcfsplit"], inputs=[ToolInput(tag="in_bed_regions", input_type=File(optional=True), prefix="--bed-regions", doc=InputDocumentation(doc="if set, only read VCF records that overlap\nthe ranges contained in the specified BED\nfile")), ToolInput(tag="in_input_vcf_read", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="the input VCF, or '-' to read from standard")), ToolInput(tag="in_region", input_type=Int(optional=True), prefix="--region", doc=InputDocumentation(doc="if set, only read VCF records within the\nspecified range. The format is one of\n<sequence_name>,\n<sequence_name>:<start>-<end>,\n<sequence_name>:<pos>+<length> or\n<sequence_name>:<pos>~<padding>")), ToolInput(tag="in_keep_ref", input_type=Boolean(optional=True), prefix="--keep-ref", doc=InputDocumentation(doc="keep records where the sample is reference")), ToolInput(tag="in_keep_sample", input_type=File(optional=True), prefix="--keep-sample", doc=InputDocumentation(doc="|FILE   file containing sample IDs to select, or a\nliteral sample name. May be specified 0 or\nmore times, or as a comma separated list")), ToolInput(tag="in_remove_sample", input_type=File(optional=True), prefix="--remove-sample", doc=InputDocumentation(doc="|FILE file containing sample IDs to ignore, or a\nliteral sample name. May be specified 0 or\nmore times, or as a comma separated list")), ToolInput(tag="in_no_gzip", input_type=Boolean(optional=True), prefix="--no-gzip", doc=InputDocumentation(doc="do not gzip the output")), ToolInput(tag="in_o__directory", input_type=String(), position=0, doc=InputDocumentation(doc="-o, --output=DIR                directory for output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Vcfsplit_V0_1_0().translate("wdl", allow_empty_container=True)

