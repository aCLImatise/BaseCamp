from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Plot_Counts_Correlation_Py_V0_1_0 = CommandToolBuilder(tool="plot_counts_correlation.py", base_command=["plot_counts_correlation.py"], inputs=[ToolInput(tag="in_report_pdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF.")), ToolInput(tag="in_data_tags_tagtag", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="Data tags: tag1,tag2.")), ToolInput(tag="in_merged_data_tsv", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Merged data TSV.")), ToolInput(tag="in_correlation_tsv", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Correlation TSV.")), ToolInput(tag="in_counts_one", input_type=String(), position=0, doc=InputDocumentation(doc="Input tab separated file.")), ToolInput(tag="in_counts_two", input_type=String(), position=1, doc=InputDocumentation(doc="Input tab separated file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Counts_Correlation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

