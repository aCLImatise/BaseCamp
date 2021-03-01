from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Extract_Genome_Region_V0_1_0 = CommandToolBuilder(tool="extract_genome_region", base_command=["extract_genome_region"], inputs=[ToolInput(tag="in_naming", input_type=Boolean(optional=True), prefix="--naming", doc=InputDocumentation(doc="[csv|seq_range|csv_seq_range]\nOptions regarding how each new fasta record\nwill be named. See main help-text for\nexplainations of options. [default='csv']")), ToolInput(tag="in_record_name", input_type=String(), position=0, doc=InputDocumentation(doc="The name you want the seq to have in the new fasta.")), ToolInput(tag="in_scaffold", input_type=String(), position=1, doc=InputDocumentation(doc="The name of the seq record in the source fasta (chromosome, scaffold, contig, etc).")), ToolInput(tag="in_start", input_type=String(), position=2, doc=InputDocumentation(doc="The first bp of the seq feature you want in the new fasta.")), ToolInput(tag="in_stop", input_type=String(), position=3, doc=InputDocumentation(doc="The last bp of the seq feature you want in the new fasta.")), ToolInput(tag="in_left_bfr", input_type=String(), position=4, doc=InputDocumentation(doc="How many 'extra' bp with coords smaller than `start` you want (0 for none).")), ToolInput(tag="in_right_bfr", input_type=String(), position=5, doc=InputDocumentation(doc="How many 'extra' bp with coords larger than `stop` you want (0 for none).")), ToolInput(tag="in_csv", input_type=String(), position=0, doc=InputDocumentation(doc="use only the contents of the `record_name` field in the csv file (>CPR23).")), ToolInput(tag="in_seq_range", input_type=String(), position=1, doc=InputDocumentation(doc="use only the `scaffold` name and sequence range (>scaffold1:230-679).")), ToolInput(tag="in_csv_seq_range", input_type=String(), position=2, doc=InputDocumentation(doc="use both the contents of the `record_name` field and the `scaffold`.\nname and sequence range (>CPR23 scaffold1:230-679)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Genome_Region_V0_1_0().translate("wdl", allow_empty_container=True)

