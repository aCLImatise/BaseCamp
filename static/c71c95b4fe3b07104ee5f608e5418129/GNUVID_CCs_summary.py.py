from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gnuvid_Ccs_Summary_Py_V0_1_0 = CommandToolBuilder(tool="GNUVID_CCs_summary.py", base_command=["GNUVID_CCs_summary.py"], inputs=[ToolInput(tag="in_gnuvidccssummary_summarizes_dbisolatesreport", input_type=String(), position=0, doc=InputDocumentation(doc="GNUVID_CCs_summary summarizes the GNUVID DB_isolates_report")), ToolInput(tag="in_inactive_date", input_type=String(), position=0, doc=InputDocumentation(doc="an inactive date cutoff, usually 1 month before release\ndate, in this format (2020-06-03) to assign status")), ToolInput(tag="in_quiet_date", input_type=String(), position=1, doc=InputDocumentation(doc="a quiet date cutoff, usually 2 weeks before release\ndate, in this format (2020-06-03) to assign status")), ToolInput(tag="in_defining_snps", input_type=String(), position=2, doc=InputDocumentation(doc="tab-separated file of CC, SNPs and GISAID clade (.txt)")), ToolInput(tag="in_gnuviddbisolatesreport_analyze_has", input_type=String(), position=3, doc=InputDocumentation(doc="GNUVID_DB_isolates_report to analyze that has STs and\nCCs (.txt)"))], outputs=[], container="quay.io/biocontainers/gnuvid:2.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnuvid_Ccs_Summary_Py_V0_1_0().translate("wdl")

