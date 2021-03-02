from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Filter_Biom_Py_V0_1_0 = CommandToolBuilder(tool="filter_biom.py", base_command=["filter_biom.py"], inputs=[ToolInput(tag="in_filter_ot_uids_fnh", input_type=File(optional=True), prefix="--filter_otuids_fnh", doc=InputDocumentation(doc="Path to file to write out the list of OTUIDs not\npresent in any SampleIDs in mapping file. This output\nis usually used to filter out unwanted otuids from\n.tre file. If not given, the discarded OTUIDs list\nwill be saved in the current working directory.\n")), ToolInput(tag="in_input_biom_fnh", input_type=String(), position=0, doc=InputDocumentation(doc="BIOM file path.")), ToolInput(tag="in_output_biom_fnh", input_type=String(), position=1, doc=InputDocumentation(doc="Filtered biom output file.")), ToolInput(tag="in_mapping_fnh", input_type=String(), position=2, doc=InputDocumentation(doc="Mapping file with sampleIDs to retain in it. The\n'#SampleID' column will be used to get the list of all\nids to retain."))], outputs=[ToolOutput(tag="out_filter_ot_uids_fnh", output_type=File(optional=True), selector=InputSelector(input_to_select="in_filter_ot_uids_fnh", type_hint=File()), doc=OutputDocumentation(doc="Path to file to write out the list of OTUIDs not\npresent in any SampleIDs in mapping file. This output\nis usually used to filter out unwanted otuids from\n.tre file. If not given, the discarded OTUIDs list\nwill be saved in the current working directory.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Biom_Py_V0_1_0().translate("wdl", allow_empty_container=True)

