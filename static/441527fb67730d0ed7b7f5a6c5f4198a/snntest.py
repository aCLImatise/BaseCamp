from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Array, String, Int

Snntest_V0_1_0 = CommandToolBuilder(tool="snntest", base_command=["snntest"], inputs=[ToolInput(tag="in_data_fasta_format", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc=": data are in fasta format in a file called filename\nfurther options for fasta data:\n-O outgroup : if there is an outgroup in the file, pass it the number (1 <= outgroup <= n)")), ToolInput(tag="in_data_format_used", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=": data are in the format used for Hudson's (2001) programs")), ToolInput(tag="in_read_mslike_data", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": read ms-like data from stdin")), ToolInput(tag="in_number_pops_followed", input_type=Array(t=String(), optional=True), prefix="-c", doc=InputDocumentation(doc=": the number of pops followed by list of sample sizes per pop")), ToolInput(tag="in_write_data_outfilename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": write data to outfilename (defaults to writing to the screen)")), ToolInput(tag="in_get_pvalues_nperms", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc=": get p-values from nperms permutations of the data (default=10000)")), ToolInput(tag="in_only_analyze_considers", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": only analyze bi-allelic sites (only considers the ingroup!)"))], outputs=[ToolOutput(tag="out_write_data_outfilename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_data_outfilename", type_hint=File()), doc=OutputDocumentation(doc=": write data to outfilename (defaults to writing to the screen)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snntest_V0_1_0().translate("wdl", allow_empty_container=True)

