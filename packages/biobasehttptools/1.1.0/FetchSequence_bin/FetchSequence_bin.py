from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fetchsequence_Bin_V0_1_0 = CommandToolBuilder(tool="FetchSequence_bin", base_command=["FetchSequence-bin"], inputs=[ToolInput(tag="in_host", input_type=String(), position=0, doc=InputDocumentation(doc="= 'eutils.ncbi.nlm.nih.gov'")), ToolInput(tag="in_secure", input_type=String(), position=1, doc=InputDocumentation(doc="= True")), ToolInput(tag="in_path", input_type=File(), position=2, doc=InputDocumentation(doc="= '/entrez/eutils/efetch.fcgi'")), ToolInput(tag="in_query_string", input_type=String(), position=3, doc=InputDocumentation(doc="= '?db=nucleotide&id=0&seq_start=0&seq_stop=0&rettype=fasta'")), ToolInput(tag="in_method", input_type=String(), position=4, doc=InputDocumentation(doc="= 'GET'")), ToolInput(tag="in_proxy", input_type=String(), position=5, doc=InputDocumentation(doc="= Nothing")), ToolInput(tag="in_raw_body", input_type=String(), position=6, doc=InputDocumentation(doc="= False")), ToolInput(tag="in_response_time_out", input_type=String(), position=7, doc=InputDocumentation(doc="= ResponseTimeoutDefault")), ToolInput(tag="in_request_version", input_type=String(), position=8, doc=InputDocumentation(doc="= HTTP/1.1"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fetchsequence_Bin_V0_1_0().translate("wdl", allow_empty_container=True)

