from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Qreport_V0_1_0 = CommandToolBuilder(tool="Qreport", base_command=["Qreport"], inputs=[ToolInput(tag="in_package_version", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="package version.")), ToolInput(tag="in_help_dialog", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="help dialog.")), ToolInput(tag="in_file_mandatory_option", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file [*fq|*fq.gz|*fq.bz2]. Mandatory option.")), ToolInput(tag="in_length_length_reads", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="length. Length of the reads. Mandatory option.")), ToolInput(tag="in_file_prefix_extension", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="file prefix (with NO extension). Mandatory option.")), ToolInput(tag="in_tiles_optional_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="of tiles. Optional (default 96).")), ToolInput(tag="in_quality_allowed_default", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="quality allowed. Optional (default 27).")), ToolInput(tag="in_different_quality_values", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="of different quality values allowed. Optional (default 46).")), ToolInput(tag="in_status_original_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="status: 0 original file, 1 file filtered with trimFilter,\n2 file filtered with another tool. Optional (default 0).")), ToolInput(tag="in_value_quality_score", input_type=Int(optional=True), prefix="-0", doc=InputDocumentation(doc="value for quality score 0. Optional (default 33).")), ToolInput(tag="in_values_low_quality", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="values for low quality proportion plot. Optional (default 27,33,37),\nFormat is either <int>[,<int>]* or <min-int>:<max-int>."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qreport_V0_1_0().translate("wdl", allow_empty_container=True)

