from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cramtools_Qstat_V0_1_0 = CommandToolBuilder(tool="cramtools_qstat", base_command=["cramtools", "qstat"], inputs=[ToolInput(tag="in_default_quality_score", input_type=Boolean(optional=True), prefix="--default-quality-score", doc=InputDocumentation(doc="Use this value as a default or missing quality score. Lowest is 0, which corresponds to '!' in fastq. (default: 30)")), ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input-file", doc=InputDocumentation(doc="The path to the CRAM or BAM file.")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)")), ToolInput(tag="in_main_class", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cramtools_Qstat_V0_1_0().translate("wdl", allow_empty_container=True)

