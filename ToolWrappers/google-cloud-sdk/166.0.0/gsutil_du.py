from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gsutil_Du_V0_1_0 = CommandToolBuilder(tool="gsutil_du", base_command=["gsutil", "du"], inputs=[ToolInput(tag="in_ends_output_line", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="Ends each output line with a 0 byte rather than a newline. This\ncan be useful to make the output more easily machine-readable.")), ToolInput(tag="in_includes_noncurrent_versions", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Includes non-current object versions / generations in the listing\n(only useful with a versioning-enabled bucket). Also prints\ngeneration and metageneration for each listed object.")), ToolInput(tag="in_includes_grand_total", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Includes a grand total at the end of the output.")), ToolInput(tag="in_pattern_exclude_reporting", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="A pattern to exclude from reporting. Example: -e '*.o' would\nexclude any object that ends in '.o'. Can be specified multiple\ntimes.")), ToolInput(tag="in_displays_only_total", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Displays only the grand total for each argument.")), ToolInput(tag="in_similar_excludes_patterns", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="Similar to -e, but excludes patterns from the given file. The\npatterns to exclude should be one per line."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Du_V0_1_0().translate("wdl", allow_empty_container=True)

