from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bam_Readcount_V0_1_0 = CommandToolBuilder(tool="bam_readcount", base_command=["bam-readcount"], inputs=[ToolInput(tag="in_output_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]                      output the version number")), ToolInput(tag="in_arg_minimum_mapping", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="[ --min-mapping-quality ] arg (=0) minimum mapping quality of reads used\nfor counting.")), ToolInput(tag="in_arg_base_quality", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --min-base-quality ] arg (=0)    minimum base quality at a position to\nuse the read for counting.")), ToolInput(tag="in_arg_max_depth", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --max-count ] arg (=10000000)    max depth to avoid excessive memory")), ToolInput(tag="in_arg_reference_sequence", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --reference-fasta ] arg          reference sequence in the fasta format.")), ToolInput(tag="in_arg_report_qualities", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="[ --print-individual-mapq ] arg    report the mapping qualities as a comma\nseparated list.")), ToolInput(tag="in_report_results_library", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --per-library ]                  report results by library.")), ToolInput(tag="in_arg_maximum_number", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="[ --max-warnings ] arg             maximum number of warnings of each type\nto emit. -1 gives an unlimited number.")), ToolInput(tag="in_generate_indel_readcountsreads", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --insertion-centric ]            generate indel centric readcounts.\nReads containing insertions will not be\nincluded in per-base counts\n")), ToolInput(tag="in_usage_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-l [ --site-list ] arg                file containing a list of regions to "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Readcount_V0_1_0().translate("wdl", allow_empty_container=True)

