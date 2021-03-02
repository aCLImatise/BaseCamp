from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Purge_Haplotigs_Cov_V0_1_0 = CommandToolBuilder(tool="purge_haplotigs_cov", base_command=["purge_haplotigs", "cov"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="The bedtools genomecov output that was produced from 'purge_haplotigs readhist'")), ToolInput(tag="in_low", input_type=Boolean(optional=True), prefix="-low", doc=InputDocumentation(doc="The read depth low cutoff (use the histogram to eyeball these cutoffs)")), ToolInput(tag="in_mid", input_type=Boolean(optional=True), prefix="-mid", doc=InputDocumentation(doc="The low point between the haploid and diploid peaks")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Choose an output file name (CSV format, DEFAULT = coverage_stats.csv)")), ToolInput(tag="in_junk", input_type=Boolean(optional=True), prefix="-junk", doc=InputDocumentation(doc="Auto-assign contig as 'j' (junk) if this percentage or greater of the contig is\nlow/high coverage (DEFAULT = 80, > 100 = don't junk anything)")), ToolInput(tag="in_suspect", input_type=Boolean(optional=True), prefix="-suspect", doc=InputDocumentation(doc="Auto-assign contig as 's' (suspected haplotig) if this percentage or less of the\ncontig is diploid level of coverage (DEFAULT = 80)\n")), ToolInput(tag="in_h", input_type=Int(optional=True), prefix="-h", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Choose an output file name (CSV format, DEFAULT = coverage_stats.csv)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Purge_Haplotigs_Cov_V0_1_0().translate("wdl", allow_empty_container=True)

