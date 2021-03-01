from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Feht_V0_1_0 = CommandToolBuilder(tool="feht", base_command=["feht"], inputs=[ToolInput(tag="in_info_file", input_type=File(optional=True), prefix="--infoFile", doc=InputDocumentation(doc="File of metadata information")), ToolInput(tag="in_data_file", input_type=File(optional=True), prefix="--datafile", doc=InputDocumentation(doc="File of binary or single-nucleotide variant data")), ToolInput(tag="in_one", input_type=Boolean(optional=True), prefix="--one", doc=InputDocumentation(doc="'Group1Name Group1Item Group1Item Group1Item'\nGroup1 column name, followed by optional Group1\nlabels to include as part of the group")), ToolInput(tag="in_two", input_type=Boolean(optional=True), prefix="--two", doc=InputDocumentation(doc="'Group2Name Group2Item Group2Item Group2Item'\nGroup2 column name, followed by optional Group2\nlabels to include as part of the group")), ToolInput(tag="in_delimiter", input_type=Boolean(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="[',', '\t' ...], DEFAULT='\t'\nDelimiter used for both the metadata and data file")), ToolInput(tag="in_mode", input_type=Boolean(optional=True), prefix="--mode", doc=InputDocumentation(doc="['binary', 'snp'], DEFAULT='binary'\nMode for program data; either 'binary' or 'snp'")), ToolInput(tag="in_correction", input_type=Boolean(optional=True), prefix="--correction", doc=InputDocumentation(doc="['none', 'bonferroni'], DEFAULT='bonferroni'\nMultiple-testing correction to apply")), ToolInput(tag="in_ratio_filter", input_type=Boolean(optional=True), prefix="--ratioFilter", doc=InputDocumentation(doc="[Filter results by ratio (0.00-1.00), DEFAULT=0]\nDisplay only those results greater than or equal to\nthe value"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Feht_V0_1_0().translate("wdl", allow_empty_container=True)

