from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Anvi_Analyze_Synteny_V0_1_0 = CommandToolBuilder(tool="anvi_analyze_synteny", base_command=["anvi-analyze-synteny"], inputs=[ToolInput(tag="in_external_genomes", input_type=File(optional=True), prefix="--external-genomes", doc=InputDocumentation(doc="A two-column TAB-delimited flat text file that lists\nanvi'o contigs databases. The first item in the header\nline should read 'name', and the second should read\n'contigs_db_path'. Each line in the file should\ndescribe a single entry, where the first column is the\nname of the genome (or MAG), and the second column is\nthe anvi'o contigs database generated for this genome.")), ToolInput(tag="in_annotation_source", input_type=String(optional=True), prefix="--annotation-source", doc=InputDocumentation(doc="NAME\nGet functional annotations for a specific annotation\nsource. You can use the flag '--list-annotation-\nsources' to learn about what sources are available.")), ToolInput(tag="in_n_gram_window_range", input_type=Int(optional=True), prefix="--ngram-window-range", doc=InputDocumentation(doc="The range of window sizes of Ngrams to analyze for\nsynteny patterns.Please format the window-range as x:y\n(e.g. Window sizes 2 to 4 would be denoted as: 2:4)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results.")), ToolInput(tag="in_analyze_unknown_functions", input_type=Boolean(optional=True), prefix="--analyze-unknown-functions", doc=InputDocumentation(doc="Provide this flag if you want anvi-analyze-synteny to\ntake into account Ngrams that contain gene calls that\nhave no annotation.\n")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Analyze_Synteny_V0_1_0().translate("wdl", allow_empty_container=True)

