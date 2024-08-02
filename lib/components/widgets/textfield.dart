part of '../../clear_design_system.dart';

class Textfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? isEmail;
  final bool? hasError;
  const Textfield({
    required this.controller,
    required this.hintText,
    this.isEmail,
    this.hasError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.lexend(
          color: neutral900,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: neutral900,
        keyboardType: isEmail != null && isEmail == true
            ? TextInputType.emailAddress
            : TextInputType.text,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          contentPadding: mediumPadding,
          isDense: true,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          labelText: hintText,
          labelStyle: GoogleFonts.lexend(
            color: neutral300,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelStyle: GoogleFonts.lexend(
            color: neutral900,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: hasError != null && hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: hasError != null && hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: smallCirular,
          ),
        ),
      ),
    );
  }
}

class NumberTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLength;
  final bool? hasError;
  final bool? showLable;
  const NumberTextfield({
    required this.controller,
    required this.hintText,
    required this.maxLength,
    this.hasError,
    this.showLable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.lexend(
          color: neutral900,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: neutral900,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
        ],
        decoration: InputDecoration(
          contentPadding: mediumPadding,
          isDense: true,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          labelText: hintText,
          labelStyle: GoogleFonts.lexend(
            color: neutral300,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          floatingLabelBehavior: showLable != null && showLable == false
              ? FloatingLabelBehavior.never
              : FloatingLabelBehavior.auto,
          floatingLabelStyle: GoogleFonts.lexend(
            color: neutral900,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: hasError != null && hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: hasError != null && hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: smallCirular,
          ),
        ),
      ),
    );
  }
}

class MultiLineTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final bool? hasError;
  const MultiLineTextfield({
    required this.controller,
    required this.hintText,
    required this.maxLines,
    this.hasError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.lexend(
          color: neutral900,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: neutral900,
        maxLines: maxLines,
        minLines: 1,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          contentPadding: mediumPadding,
          isDense: true,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          labelText: hintText,
          labelStyle: GoogleFonts.lexend(
            color: neutral300,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelStyle: GoogleFonts.lexend(
            color: neutral900,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: hasError != null && hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: hasError != null && hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: smallCirular,
          ),
        ),
      ),
    );
  }
}

class DateTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? hasError;
  const DateTextfield({
    required this.controller,
    required this.hintText,
    this.hasError,
    super.key,
  });

  @override
  State<DateTextfield> createState() => _DateTextfieldState();
}

class _DateTextfieldState extends State<DateTextfield> {
  List<DateTime> eintrittsDatumDates = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: widget.controller,
        style: GoogleFonts.lexend(
          color: neutral900,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        keyboardType: TextInputType.datetime,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
          FilteringTextInputFormatter.digitsOnly,
          DateInputFormatter(),
        ],
        cursorColor: neutral900,
        decoration: InputDecoration(
          contentPadding: mediumPadding,
          isDense: true,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          labelText: widget.hintText,
          labelStyle: GoogleFonts.lexend(
            color: neutral300,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelStyle: GoogleFonts.lexend(
            color: neutral900,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: widget.hasError != null && widget.hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: widget.hasError != null && widget.hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: smallCirular,
          ),
          suffix: GestureDetector(
            onTap: () async {
              var results = await showCalendarDatePicker2Dialog(
                context: context,
                config: CalendarDatePicker2WithActionButtonsConfig(
                  currentDate: DateTime.now(),
                  firstDate: DateTime(2000, 01, 01),
                  lastDate: DateTime.now(),
                  selectedDayHighlightColor: primary,
                  daySplashColor: primary100,
                  weekdayLabels: [
                    'M',
                    'D',
                    'M',
                    'D',
                    'F',
                    'S',
                    'S',
                  ],
                  dayTextStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: neutral900),
                  yearTextStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: neutral900),
                  monthTextStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: neutral900),
                  todayTextStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: primary),
                  selectedDayTextStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: neutral100),
                  controlsTextStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: neutral500),
                  weekdayLabelTextStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: neutral500),
                  disabledDayTextStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: neutral500),
                  cancelButton: Text(
                    'Abbrechen',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: neutral300),
                  ),
                  okButton: Text(
                    'Wählen',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: primary),
                  ),
                ),
                dialogSize: Size(
                  MediaQuery.sizeOf(context).width * 0.9,
                  MediaQuery.sizeOf(context).width * 0.4,
                ),
                dialogBackgroundColor: white,
                value: eintrittsDatumDates,
                borderRadius: largeCirular,
              );
              if (results != null) {
                DateTime dateTime = results.first!;
                String formattedDate =
                    DateFormat('dd.MM.yyyy').format(dateTime);
                widget.controller.text = formattedDate;
              }
            },
            child: const FaIcon(
              FontAwesomeIcons.calendar,
              color: neutral300,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class NoLableTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;
  final bool? hasError;
  const NoLableTextfield({
    required this.controller,
    required this.hintText,
    this.maxLines,
    this.hasError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.lexend(
          color: neutral900,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: neutral900,
        minLines: 1,
        maxLines: maxLines,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          contentPadding: mediumPadding,
          isDense: true,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          focusedBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: hasError != null && hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: smallCirular,
            borderSide: BorderSide(
              color: hasError != null && hasError == true
                  ? warning500
                  : neutral300,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: smallCirular,
          ),
        ),
      ),
    );
  }
}

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var text = newValue.text;

    if (text.length > 10) {
      return oldValue;
    }

    text = text.replaceAll('.', '');
    var buffer = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      if (i == 2 || i == 4) {
        buffer.write('.');
      }
      buffer.write(text[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
