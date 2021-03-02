from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Transform_Coverage_Profile_V0_1_0 = CommandToolBuilder(tool="transform_coverage_profile", base_command=["transform-coverage-profile"], inputs=[ToolInput(tag="in_specify_the_cov", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Specify the cov")), ToolInput(tag="in_indicate_type_want", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Indicate what type of data transformation you want in the final file (default is log):\nscale --> Multiplication by 100 and log transform\nlog --> Log transform\nX5 --> Multiplication by 5\nX10 --> Multiplication by 10\nSQR --> Square root\nWe recommend using a log transformation for initial testing. Other transformations can be useful in cases where there is an extremely low range distribution of coverages and when coverage values are low\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transform_Coverage_Profile_V0_1_0().translate("wdl", allow_empty_container=True)

