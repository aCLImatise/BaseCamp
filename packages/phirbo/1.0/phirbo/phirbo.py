from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String

Phirbo_V0_1_0 = CommandToolBuilder(tool="phirbo", base_command=["phirbo"], inputs=[ToolInput(tag="in_rbo_parameter_range", input_type=Float(optional=True), prefix="--p", doc=InputDocumentation(doc="RBO parameter in range (0, 1) determines the degree of top-\nweightedness of RBO measure. High p implies strong emphasis\non top ranked items [default = 0.75]")), ToolInput(tag="in_truncate_ranked_lists", input_type=Int(optional=True), prefix="--k", doc=InputDocumentation(doc="Truncate all ranked lists to the first `k` rankings to\ncalculate RBO. To disable the truncation use --k 0 [default\n= 30]")), ToolInput(tag="in_number_threads_cpus", input_type=Int(optional=True), prefix="--t", doc=InputDocumentation(doc="Number of threads (CPUs) [default = 8]")), ToolInput(tag="in_virus_dir", input_type=String(), position=0, doc=InputDocumentation(doc="Input directory w/ ranked lists for viruses")), ToolInput(tag="in_host_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Input directory w/ ranked lists for hosts")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc="Output file name"))], outputs=[], container="quay.io/biocontainers/phirbo:1.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phirbo_V0_1_0().translate("wdl")

