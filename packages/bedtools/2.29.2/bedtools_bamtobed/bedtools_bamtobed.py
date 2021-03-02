from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Bamtobed_V0_1_0 = CommandToolBuilder(tool="bedtools_bamtobed", base_command=["bedtools", "bamtobed"], inputs=[ToolInput(tag="in_bed_pe", input_type=Boolean(optional=True), prefix="-bedpe", doc=InputDocumentation(doc="Write BEDPE format.\n- Requires BAM to be grouped or sorted by query.")), ToolInput(tag="in_mate_one", input_type=Boolean(optional=True), prefix="-mate1", doc=InputDocumentation(doc="When writing BEDPE (-bedpe) format,\nalways report mate one as the first BEDPE 'block'.")), ToolInput(tag="in_be_done_two", input_type=Boolean(optional=True), prefix="-bed12", doc=InputDocumentation(doc="Write 'blocked' BED format (aka 'BED12'). Forces -split.\nhttp://genome-test.cse.ucsc.edu/FAQ/FAQformat#format1")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="-split", doc=InputDocumentation(doc="Report 'split' BAM alignments as separate BED entries.\nSplits only on N CIGAR operations.")), ToolInput(tag="in_split_d", input_type=String(optional=True), prefix="-splitD", doc=InputDocumentation(doc="alignments based on N and D CIGAR operators.\nForces -split.")), ToolInput(tag="in_ed", input_type=Boolean(optional=True), prefix="-ed", doc=InputDocumentation(doc="Use BAM edit distance (NM tag) for BED score.\n- Default for BED is to use mapping quality.\n- Default for BEDPE is to use the minimum of\nthe two mapping qualities for the pair.\n- When -ed is used with -bedpe, the total edit\ndistance from the two mates is reported.")), ToolInput(tag="in_tag", input_type=Boolean(optional=True), prefix="-tag", doc=InputDocumentation(doc="Use other NUMERIC BAM alignment tag for BED score.\n- Default for BED is to use mapping quality.\nDisallowed with BEDPE output.")), ToolInput(tag="in_color", input_type=Boolean(optional=True), prefix="-color", doc=InputDocumentation(doc="An R,G,B string for the color used with BED12 format.\nDefault is (255,0,0).")), ToolInput(tag="in_cigar", input_type=Boolean(optional=True), prefix="-cigar", doc=InputDocumentation(doc="Add the CIGAR string to the BED entry as a 7th column.")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Bamtobed_V0_1_0().translate("wdl", allow_empty_container=True)

